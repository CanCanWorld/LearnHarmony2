export interface Data {
  title: string;
  label: string;
  fhdUrl: string;
  uhdUrl: string;
  copyright: string;
  description: string;
  time: string;
}

export interface DataType {
  data: Data;
  success: boolean;
}