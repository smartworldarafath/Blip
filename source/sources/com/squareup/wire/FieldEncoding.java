package com.squareup.wire;

import defpackage.k8;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FieldEncoding {
    public static final FieldEncoding k;
    public static final FieldEncoding l;
    public static final FieldEncoding m;
    public static final FieldEncoding n;
    public static final /* synthetic */ FieldEncoding[] o;
    public final int j;

    static {
        FieldEncoding fieldEncoding = new FieldEncoding("VARINT", 0, 0);
        k = fieldEncoding;
        FieldEncoding fieldEncoding2 = new FieldEncoding("FIXED64", 1, 1);
        l = fieldEncoding2;
        FieldEncoding fieldEncoding3 = new FieldEncoding("LENGTH_DELIMITED", 2, 2);
        m = fieldEncoding3;
        FieldEncoding fieldEncoding4 = new FieldEncoding("FIXED32", 3, 5);
        n = fieldEncoding4;
        FieldEncoding[] fieldEncodingArr = {fieldEncoding, fieldEncoding2, fieldEncoding3, fieldEncoding4};
        o = fieldEncodingArr;
        EnumEntriesKt.a(fieldEncodingArr);
    }

    public FieldEncoding(String str, int i, int i2) {
        this.j = i2;
    }

    public static FieldEncoding valueOf(String str) {
        return (FieldEncoding) Enum.valueOf(FieldEncoding.class, str);
    }

    public static FieldEncoding[] values() {
        return (FieldEncoding[]) o.clone();
    }

    public final ProtoAdapter a() {
        int ordinal = ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal == 3) {
                        return ProtoAdapter.j;
                    }
                    k8.e();
                    return null;
                }
                return ProtoAdapter.o;
            }
            return ProtoAdapter.m;
        }
        return ProtoAdapter.l;
    }
}
