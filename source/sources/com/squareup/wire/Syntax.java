package com.squareup.wire;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Syntax {
    public static final Syntax k;
    public static final Syntax l;
    public static final /* synthetic */ Syntax[] m;
    public final String j;

    static {
        Syntax syntax = new Syntax("PROTO_2", 0, "proto2");
        k = syntax;
        Syntax syntax2 = new Syntax("PROTO_3", 1, "proto3");
        l = syntax2;
        Syntax[] syntaxArr = {syntax, syntax2};
        m = syntaxArr;
        EnumEntriesKt.a(syntaxArr);
    }

    public Syntax(String str, int i, String str2) {
        this.j = str2;
    }

    public static Syntax valueOf(String str) {
        return (Syntax) Enum.valueOf(Syntax.class, str);
    }

    public static Syntax[] values() {
        return (Syntax[]) m.clone();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.j;
    }
}
