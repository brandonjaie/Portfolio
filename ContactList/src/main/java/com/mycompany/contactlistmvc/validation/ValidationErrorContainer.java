/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.contactlistmvc.validation;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Brandon
 */
public class ValidationErrorContainer {

    private List<ValidationError> validationErrors = new ArrayList<>();

    public void addValidationError(String field, String message) {
        ValidationError error = new ValidationError(field, message);
        validationErrors.add(error);
    }

    public List<ValidationError> getFieldErrors() {
        return validationErrors;
    }
}
