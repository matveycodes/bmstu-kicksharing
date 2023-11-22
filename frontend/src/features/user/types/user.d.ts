interface User {
  id: string;
  status: string;
  isActive: boolean;
  role: string;
  dateJoined: string;
  middleName: string | null;
  lastName: string | null;
  firstName: string | null;
  email: string | null;
  phone: string;
  birthdate: string | null;
  age: number | null;
}

export { User };
