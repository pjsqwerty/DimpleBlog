package com.dimple.project.blog.domain;

import lombok.Builder;
import lombok.Data;

import java.io.Serializable;

/**
 * @className: TagMapping
 * @description: Tag和其他表的关联
 * @author: Dimple
 * @date: 11/22/19
 */
@Data
@Builder
public class TagMapping implements Serializable {
    private Long id;
    private Long blogId;
    private Long tagId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getBlogId() {
        return blogId;
    }

    public void setBlogId(Long blogId) {
        this.blogId = blogId;
    }

    public Long getTagId() {
        return tagId;
    }

    public void setTagId(Long tagId) {
        this.tagId = tagId;
    }
}
