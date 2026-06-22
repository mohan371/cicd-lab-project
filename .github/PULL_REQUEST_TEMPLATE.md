# Description

[JIRA Link](https://newlook.atlassian.net/browse/REPLACE_ME_WITH_TICKET_NUMBER)

- Please add a **description** of the issue this PR is addressing.
- Add a **label** to the PR for release notes generation.
- Include sample **API request/response**, logs, or screenshots (if applicable).
- Ensure the correct **Husky version tag** (major/minor/patch) has been applied.
- ~~Strike out~~ or delete any sections that are not applicable.

# Definition of Done / Ready

A **Definition of Done (DoD)** ensures backend changes are complete, tested, secure, and ready for deployment.

## Must Have

### 1. Functional Requirements
- [ ] All acceptance criteria have been completed.
- [ ] API/business logic behaves as expected.
- [ ] Existing functionality has not been broken.

### 2. Code Quality
- [ ] Code follows the project's coding standards.
- [ ] No unnecessary commented or unused code.
- [ ] Proper naming conventions are used.
- [ ] Logging and exception handling are implemented where required.

### 3. Testing
- [ ] Unit tests have been added or updated.
- [ ] Integration tests pass (where applicable).
- [ ] All CI pipeline checks pass successfully.

### 4. API Changes
- [ ] API contract has been reviewed.
- [ ] Swagger/OpenAPI documentation updated (if applicable).
- [ ] Breaking API changes have been documented.

### 5. Database
- [ ] Database migrations have been added (if required).
- [ ] Migration has been tested.
- [ ] Rollback strategy has been considered.

### 6. Security
- [ ] Authentication and authorization are validated.
- [ ] Sensitive information is not exposed.
- [ ] Secrets are not committed.
- [ ] Input validation has been implemented.

### 7. Code Review
- [ ] PR has been reviewed by peers.
- [ ] Review comments have been addressed.

---

## Should Have

### Performance
- [ ] Performance impact has been considered.
- [ ] Queries/API calls are optimized.

### Observability
- [ ] Logging is meaningful.
- [ ] Monitoring/alerts updated where required.
- [ ] Metrics/tracing added if necessary.

### Infrastructure
- [ ] Helm values updated (if required).
- [ ] Environment variables documented.
- [ ] Kubernetes manifests reviewed (if applicable).

### Deployment
- [ ] Deployment completed without issues.
- [ ] Rollback plan has been validated.
- [ ] Feature flags configured where applicable.

### Documentation
- [ ] README or developer documentation updated.
- [ ] Configuration changes documented.

### Dependencies
- [ ] New dependencies have been reviewed.
- [ ] Dependabot/Security scan issues addressed.

### Scalability
- [ ] Solution supports expected load.
- [ ] Resource requirements have been reviewed.

### Compliance
- [ ] GDPR/security/compliance requirements have been considered where applicable.

---

This checklist should be reviewed periodically and updated as the backend platform evolves.