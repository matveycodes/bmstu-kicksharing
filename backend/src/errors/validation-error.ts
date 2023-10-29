type ErrorsList = Array<{
  path: string | null;
  message: string;
}>;

class ValidationError extends Error {
  public errors: ErrorsList = [];

  constructor(message?: string, errors: ErrorsList = []) {
    super(message);
    this.errors = errors;
  }
}

export { ValidationError };
