package com.tinhpt.bankapp.service;

import com.tinhpt.bankapp.dto.EmailDetails;

public interface EmailService {

    void sendEmailAlert(EmailDetails emailDetails);

    void sendEmailWithAttachment(EmailDetails emailDetails);
}
