# EdufyUtility
[![Java](https://img.shields.io/badge/Java-21-blue.svg)](https://www.oracle.com/java/technologies/javase/jdk21-archive-downloads.html)  
[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.5.7-brightgreen.svg)](https://spring.io/projects/spring-boot)

## 🧠 Overview
EdufyUtility was created as a shared service intended to hold common algorithms used across all three media services: **Video**, **Music**, and **Pod**.

The purpose of this microservice was to centralize logic such as recommendation systems, ranking algorithms, and reusable utility operations that the different media services could consume through internal API calls.

This service is **not yet completed**, and currently contains only the basic skeleton of the planned implementation.

---

## 🧩 Related Projects

### Organization
- [EdufyProjects](https://github.com/EudfyProjects)

### Connections
- [Edufy-infra](https://github.com/EudfyProjects/Edufy-infra) – Docker-compose + init.db
- [EdufyEurekaServer](https://github.com/Sommar-skog/EdufyEurekaServer) – Service discovery
- [Gateway](https://github.com/SaraSnail/EdufyGateway) – Entry point for all requests
- [EdufyUser](https://github.com/Jamtgard/EdufyUser) – User service
- [EdufyKeycloak](https://github.com/Sommar-skog/EdufyKeycloak) – Auth pipeline

### Media connections
- [EdufyCreator](https://github.com/Sommar-skog/EdufyCreator) – Creators
- [EdufyGenre](https://github.com/a-westerberg/EdufyGenre) – Genres
- [EdufyThumb](https://github.com/a-westerberg/EdufyThumb) – Thumbs up/down records
- [EdufyUtility](https://github.com/a-westerberg/EdufyUtility) – Placeholder for algorithms

### Media Services
- [EdufyMusic](https://github.com/Jamtgard/EdufyMusic) - Music
- [EdufyVideo](https://github.com/Sommar-skog/EdufyVideo) - Video
- [EdufyPod](https://github.com/SaraSnail/EdufyPod) - Pod

---

## 🚀 Tech Stack

- **Language:** Java 21
- **Build Tool:** Maven
- **Framework:** Spring Boot 3.5.7
    - Spring Web
    - Spring Security
    - Eureka Client
- **Security:**
    - OAuth2 Resource Server


---

## 🏁 Getting Started

### Prerequisites
- Java 21
- Maven
- Docker
- Postman
- Keycloak

---

### 🔌 Ports

#### Connections
- **Eureka:** `8761`
- **Gateway:** `4545`
- **MySQL:** `3307`
- **User:** `8686`
- **Keycloak:** `8080`

#### Media Services
- **Creator:** `8787`
- **Genre:** `8585`
- **Thumb:** `8484`
- **Utility:** `8888`
- **Video:** `8383`
- **Music:** `8181`
- **Pod:** `8282`

---

## 🔒 Authentication & Roles

Edufy Utility uses OAuth2 + Keycloak.

### User Roles
- **microservice_access** — internal service-to-service communication
- **edufy_realm_admin** — global admin for all services

This service has **no public user or admin endpoints yet**.

---

## 🐳 Docker
- Runs through the shared `docker-compose.yml` in **Edufy-infra**
- Part of the `edufy-network` Docker bridge

---

> _README made by [Sommar-skog](https://github.com/Sommar-skog)_