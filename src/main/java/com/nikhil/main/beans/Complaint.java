package com.nikhil.main.beans;

import java.text.SimpleDateFormat;
import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
public class Complaint {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int complaintId;
	
	private Integer customerId;
	
	@Size(min = 3, max = 250, message = "Please enter valid complaint")
	private String complaintTitle;
	
	@NotNull(message =  "Please select couse or select \"Others\" Option")
	private Integer courseComplaintId;
	
	@Size(min = 10, max = 240, message = "Please describe your issue in (10 - 200) words")
	private String complaintDescription;
	
	private String complaintTimestamp;
	
	private String complaintStatus;
	
	private String assignTo;
	
	private String resolution;
	
	private String resolutionTimestamp;
	
	private String attachmentPath;
	
	private String complaintSource;
	
	private String followUpDate;

	public int getComplaintId() {
		return complaintId;
	}

	public void setComplaintId(int complaintId) {
		this.complaintId = complaintId;
	}

	public Integer getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}
	
	public String getComplaintTimestamp() {
		return complaintTimestamp;
	}

	public void setComplaintTimestamp(String complaintTimestamp) {
		this.complaintTimestamp = complaintTimestamp;
	}
	
	// Method to set complaintTimestamp using current date and time
    public void setCurrentComplaintTimestamp() {
        // Define the date format
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy - hh:mm:ss a");

        // Get the current date and time
        Date currentDate = new Date();

        // Format the date
        this.complaintTimestamp = dateFormat.format(currentDate);
    }

	public String getResolutionTimestamp() {
		return resolutionTimestamp;
	}

	public void setResolutionTimestamp(String resolutionTimestamp) {
		this.resolutionTimestamp = resolutionTimestamp;
	}

	public String getFollowUpDate() {
		return followUpDate;
	}

	public void setFollowUpDate(String followUpDate) {
		this.followUpDate = followUpDate;
	}

	public String getComplaintTitle() {
		return complaintTitle;
	}

	public void setComplaintTitle(String complaintTitle) {
		this.complaintTitle = complaintTitle;
	}

	public Integer getCourseComplaintId() {
		return courseComplaintId;
	}

	public void setCourseComplaintId(Integer courseComplaintId) {
		this.courseComplaintId = courseComplaintId;
	}

	public String getComplaintDescription() {
		return complaintDescription;
	}

	public void setComplaintDescription(String complaintDescription) {
		this.complaintDescription = complaintDescription;
	}

	public String getComplaintStatus() {
		return complaintStatus;
	}

	public void setComplaintStatus(String complaintStatus) {
		this.complaintStatus = complaintStatus;
	}

	public String getAssignTo() {
		return assignTo;
	}

	public void setAssignTo(String assignTo) {
		this.assignTo = assignTo;
	}

	public String getResolution() {
		return resolution;
	}

	public void setResolution(String resolution) {
		this.resolution = resolution;
	}

	public String getAttachmentPath() {
		return attachmentPath;
	}

	public void setAttachmentPath(String attachmentPath) {
		this.attachmentPath = attachmentPath;
	}

	public String getComplaintSource() {
		return complaintSource;
	}

	public void setComplaintSource(String complaintSource) {
		this.complaintSource = complaintSource;
	}
}
