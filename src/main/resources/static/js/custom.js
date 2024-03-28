// function for delete course button
function courseDeleteAlert(id) {
	Swal.fire({
		title: "Are you sure?",
		text: "You won't be able to revert this!",
		icon: "warning",
		showCancelButton: true,
		confirmButtonColor: "#3085d6",
		cancelButtonColor: "#d33",
		confirmButtonText: "Yes, delete it!"
	}).then((result) => {
		if (result.isConfirmed) {
			Swal.fire({
				title: "Deleted!",
				text: "Course deleted successfully.",
				icon: "success"
			}).then(() => {
				window.location.href = "/deleteCourse?id=" + id;
			});
		}
	});
}



// function for delete employee button
function employeeDeleteAlert(id) {
	Swal.fire({
		title: "Are you sure?",
		text: "You won't be able to revert this!",
		icon: "warning",
		showCancelButton: true,
		confirmButtonColor: "#3085d6",
		cancelButtonColor: "#d33",
		confirmButtonText: "Yes, delete it!"
	}).then((result) => {
		if (result.isConfirmed) {
			Swal.fire({
				title: "Deleted!",
				text: "Employee Details deleted successfully.",
				icon: "success"
			}).then(() => {
				window.location.href = "/deleteEmployee?id=" + id;
			});
		}
	});
}


// edit admin profile image
function selectAdminImage() {
	(async () => {
		const { value: file } = await Swal.fire({
			title: "Select image",
			input: "file",
			inputAttributes: {
				"accept": "image/jpeg, image/png, image/jpg",
				"aria-label": "Upload your profile picture"
			}
		});
		if (file) {
			const reader = new FileReader();
			reader.onload = async (event) => {
				// Display the image and show Cropper.js interface
				const cropperContainer = document.createElement('div');
				cropperContainer.id = 'cropperContainer';
				cropperContainer.style.display = 'none';
				document.body.appendChild(cropperContainer);
				const image = new Image();
				image.src = event.target.result;
				image.onload = () => {
					// Calculate dimensions for the cropper based on the image size
					const aspectRatio = image.width / image.height;
					const cropperWidth = Math.min(window.innerWidth * 0.8, image.width);
					const cropperHeight = cropperWidth / aspectRatio;

					cropperContainer.style.width = cropperWidth + 'px';
					cropperContainer.style.height = cropperHeight + 'px';
					cropperContainer.appendChild(image);

					const cropper = new Cropper(image, {
						aspectRatio: 1, // Set aspect ratio to 1:1 for square crop
						viewMode: 1, // Restrict the crop box to be within the container
						autoCropArea: 1, // Automatically create a crop box that covers the entire image
						movable: true,
						zoomable: true,
						rotatable: true,
						scalable: true
					});

					// Center the cropper window vertically and horizontally
					cropperContainer.style.position = 'fixed';
					cropperContainer.style.top = '50%';
					cropperContainer.style.left = '50%';
					cropperContainer.style.transform = 'translate(-50%, -50%)';

					// Show Cropper.js interface
					cropperContainer.style.display = 'block';

					// Event listener for confirm button
					Swal.fire({
						title: 'Crop Image',
						html: cropperContainer,
						showCancelButton: true,
						showConfirmButton: true,
						confirmButtonText: 'Crop',
						preConfirm: () => {
							return new Promise((resolve) => {
								const canvas = cropper.getCroppedCanvas({ width: 200, height: 200 }); // Set width and height to 200x200
								if (canvas) {
									canvas.toBlob((blob) => {
										resolve(blob);
									});
								} else {
									resolve(null);
								}
							});
						}
					}).then(async (result) => {
						if (result.isConfirmed) {
							const croppedBlob = await result.value;
							if (croppedBlob) {
								const formData = new FormData();
								// Append the cropped blob with the original file name
								formData.append('file', croppedBlob, file.name);
								try {
									const response = await fetch('/uploadAdminProfile', {
										method: 'POST',
										body: formData
									});
									if (response.ok) {
										const imageUrl = await response.text();
										// Show spinner while waiting
										Swal.fire({
											title: 'Please wait...',
											html: `
											        <div class="spinner-container">
											            <div class="spinner-grow text-primary" role="status">
											                <span class="visually-hidden">Loading...</span>
											            </div>
											            <div class="spinner-grow text-secondary" role="status">
											                <span class="visually-hidden">Loading...</span>
											            </div>
											            <div class="spinner-grow text-success" role="status">
											                <span class="visually-hidden">Loading...</span>
											            </div>
											            <div class="spinner-grow text-danger" role="status">
											                <span class="visually-hidden">Loading...</span>
											            </div>
											            <div class="spinner-grow text-warning" role="status">
											                <span class="visually-hidden">Loading...</span>
											            </div>
											        </div>
											    `,
											allowOutsideClick: false,
											showCancelButton: false,
											showConfirmButton: false
										});


										setTimeout(() => {
											// Close the previous Swal instance
											Swal.close();
											console.log(imageUrl);

											// Show success message with uploaded image
											Swal.fire({
												title: "Image Uploaded Successfully",
												imageUrl: imageUrl,
												imageAlt: "The uploaded picture"
											}).then(() => {
												window.location.href = "/adminProfile";
											});
										}, 4000);
									} else {
										console.error('Failed to upload file');
									}
								} catch (error) {
									console.error('Error uploading file:', error);
								}
							}
						}
					});
				};
			};
			reader.readAsDataURL(file);
		}
	})();
}


