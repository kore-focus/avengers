import { DateFormatEnum, TimeFormatEnum, WeekdayEnum } from '../enums';

export interface User {
  id: string;
  first_name: string;
  last_name: string;
  email: string;
  timezone: string;
  start_of_week: WeekdayEnum;
  date_format: DateFormatEnum;
  time_format: TimeFormatEnum;
  created: number;
  updated: number;
}
