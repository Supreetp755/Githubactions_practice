# Stage 1: Build
FROM gcc:12 AS builder

WORKDIR /app
COPY hello.cpp .
RUN g++ -o hello hello.cpp

# Stage 2: Run
FROM debian:bullseye-slim

WORKDIR /app
COPY --from=builder /app/hello .

CMD ["./hello"]
