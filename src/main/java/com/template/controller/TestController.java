package com.template.controller;

import com.template.mapper.TestMapper;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    private final TestMapper testMapper;

    public TestController(TestMapper testMapper) {
        this.testMapper = testMapper;
    }

    @GetMapping("test-template")
    public String getTestTemplateString() {
        String extraText = testMapper.findTestValueById(1L);
        extraText = extraText != null ? extraText : "";
        return "This is my webpage" + extraText;
    }

}
