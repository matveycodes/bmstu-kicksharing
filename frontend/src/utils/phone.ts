const formatPhone = (value: string): string | undefined => {
  if (!/^7\d{10}$/.test(value)) {
    return undefined;
  }

  const regionCode = value.slice(1, 4);
  const firstGroup = value.slice(4, 7);
  const secondGroup = value.slice(7, 9);
  const thirdGroup = value.slice(9, 11);

  return `+7\xA0(${regionCode})\xA0${firstGroup}-${secondGroup}-${thirdGroup}`;
};

const parsePhone = (value: string): string => {
  return value.replace(/[^0-9]/g, "");
};

export { formatPhone, parsePhone };
