package com.company;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@RequiredArgsConstructor
@EqualsAndHashCode
public class Type {
    public static final Type string = new Type("string", 0);
    public static final Type integer = new Type("int", 0);
    public static final Type bool = new Type("bool", 0);
    public static final Type error = new Type("error", 0);

    @NonNull private String name;
    @NonNull private Integer dimensions;
}
