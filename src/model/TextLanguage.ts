import { Entity, Column, ManyToOne } from "typeorm";
import { Language } from "./Language";
import { Text } from "./Text";
import { Base } from "./Base";

@Entity()
export class TextLanguage extends Base {
  @ManyToOne(() => Text, (text) => text.id)
  text: Text;

  @ManyToOne(() => Language, (language) => language.id)
  language: Language;

  @Column("text")
  translation: string;
}
