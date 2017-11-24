package com.spring.CrudExample;

import java.util.Date;

public class Feedback {
	
	private int feedbackId; 
	private String feedbackChannel;
	private int cust_id; 
	private String booking_id;
	private int seqNum; 
	private int rating; 
	private String comments;
	private Date createdTime;
	private Date lastUpdatedTime;
	private String originalThreadRef;
	private String isNegativeReview;
	private String isPositiveReview;
	private String isPosted;
	private String socialPlatform;
	private String isIssueResolved;
	private String assignee;
	/**
	 * @return the feedbackId
	 */
	public int getFeedbackId() {
		return feedbackId;
	}
	/**
	 * @param feedbackId the feedbackId to set
	 */
	public void setFeedbackId(int feedbackId) {
		this.feedbackId = feedbackId;
	}
	/**
	 * @return the feedbackChannel
	 */
	public String getFeedbackChannel() {
		return feedbackChannel;
	}
	/**
	 * @param feedbackChannel the feedbackChannel to set
	 */
	public void setFeedbackChannel(String feedbackChannel) {
		this.feedbackChannel = feedbackChannel;
	}
	/**
	 * @return the cust_id
	 */
	public int getCust_id() {
		return cust_id;
	}
	/**
	 * @param cust_id the cust_id to set
	 */
	public void setCust_id(int cust_id) {
		this.cust_id = cust_id;
	}
	/**
	 * @return the booking_id
	 */
	public String getBooking_id() {
		return booking_id;
	}
	/**
	 * @param booking_id the booking_id to set
	 */
	public void setBooking_id(String booking_id) {
		this.booking_id = booking_id;
	}
	/**
	 * @return the seqNum
	 */
	public int getSeqNum() {
		return seqNum;
	}
	/**
	 * @param seqNum the seqNum to set
	 */
	public void setSeqNum(int seqNum) {
		this.seqNum = seqNum;
	}
	/**
	 * @return the rating
	 */
	public int getRating() {
		return rating;
	}
	/**
	 * @param rating the rating to set
	 */
	public void setRating(int rating) {
		this.rating = rating;
	}
	/**
	 * @return the comments
	 */
	public String getComments() {
		return comments;
	}
	/**
	 * @param comments the comments to set
	 */
	public void setComments(String comments) {
		this.comments = comments;
	}
	/**
	 * @return the createdTime
	 */
	public Date getCreatedTime() {
		return createdTime;
	}
	/**
	 * @param createdTime the createdTime to set
	 */
	public void setCreatedTime(Date createdTime) {
		this.createdTime = createdTime;
	}
	/**
	 * @return the lastUpdatedTime
	 */
	public Date getLastUpdatedTime() {
		return lastUpdatedTime;
	}
	/**
	 * @param lastUpdatedTime the lastUpdatedTime to set
	 */
	public void setLastUpdatedTime(Date lastUpdatedTime) {
		this.lastUpdatedTime = lastUpdatedTime;
	}
	/**
	 * @return the originalThreadRef
	 */
	public String getOriginalThreadRef() {
		return originalThreadRef;
	}
	/**
	 * @param originalThreadRef the originalThreadRef to set
	 */
	public void setOriginalThreadRef(String originalThreadRef) {
		this.originalThreadRef = originalThreadRef;
	}
	/**
	 * @return the isNegativeReview
	 */
	public String getIsNegativeReview() {
		return isNegativeReview;
	}
	/**
	 * @param isNegativeReview the isNegativeReview to set
	 */
	public void setIsNegativeReview(String isNegativeReview) {
		this.isNegativeReview = isNegativeReview;
	}
	/**
	 * @return the isPositiveReview
	 */
	public String getIsPositiveReview() {
		return isPositiveReview;
	}
	/**
	 * @param isPositiveReview the isPositiveReview to set
	 */
	public void setIsPositiveReview(String isPositiveReview) {
		this.isPositiveReview = isPositiveReview;
	}
	/**
	 * @return the isPosted
	 */
	public String getIsPosted() {
		return isPosted;
	}
	/**
	 * @param isPosted the isPosted to set
	 */
	public void setIsPosted(String isPosted) {
		this.isPosted = isPosted;
	}
	/**
	 * @return the socialPlatform
	 */
	public String getSocialPlatform() {
		return socialPlatform;
	}
	/**
	 * @param socialPlatform the socialPlatform to set
	 */
	public void setSocialPlatform(String socialPlatform) {
		this.socialPlatform = socialPlatform;
	}
	/**
	 * @return the isIssueResolved
	 */
	public String getIsIssueResolved() {
		return isIssueResolved;
	}
	/**
	 * @param isIssueResolved the isIssueResolved to set
	 */
	public void setIsIssueResolved(String isIssueResolved) {
		this.isIssueResolved = isIssueResolved;
	}
	/**
	 * @return the assignee
	 */
	public String getAssignee() {
		return assignee;
	}
	/**
	 * @param assignee the assignee to set
	 */
	public void setAssignee(String assignee) {
		this.assignee = assignee;
	}
	}