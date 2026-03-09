INSERT into job_applied (
    job_id,
    application_sent_date,
    custom_resume,
    resume_file_name,
    cover_letter_sent,
    cover_letter_file_name,
    status
)
values(
    1,
    '2026-2-26',
    TRUE,
    'resume1.pdf',
    TRUE,
    'cover_letter1.pdf',
    'submitted'
),
(
    2,
    '2026-2-26',
    TRUE,
    'resume2.pdf',
    FALSE,
    NULL,
    'submitted'
),
(
    3,
    '2026-2-28',
    FALSE,
    NULL,
    FALSE,
    NULL,
    'submitted'
),;

select *
from job_applied;