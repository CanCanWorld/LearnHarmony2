export interface DataType<T> {
  errno: string;
  errmsg: string;
  consume: string;
  total: string;
  data: T[];
}