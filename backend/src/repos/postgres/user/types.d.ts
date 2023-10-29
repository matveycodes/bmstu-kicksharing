interface UserRow {
  id: string;
  status: string;
  role: string;
  date_joined: string;
  middle_name: string | null;
  first_name: string | null;
  last_name: string | null;
  email: string | null;
  phone: string;
  birthdate: string | null;
}

export { UserRow };
