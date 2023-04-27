import { Entity, Column } from "typeorm";
import { Base } from "./Base";

@Entity()
export class User extends Base {
  @Column("text")
  email: string;

  @Column("text")
  password: string;

  @Column("text")
  name: string;
}
