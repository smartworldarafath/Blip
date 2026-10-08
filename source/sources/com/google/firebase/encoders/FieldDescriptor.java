package com.google.firebase.encoders;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FieldDescriptor {
    public final String a;
    public final Map b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final String a;
        public HashMap b = null;

        public Builder(String str) {
            this.a = str;
        }
    }

    public FieldDescriptor(String str, Map map) {
        this.a = str;
        this.b = map;
    }

    public static FieldDescriptor a(String str) {
        return new FieldDescriptor(str, Collections.EMPTY_MAP);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof FieldDescriptor) {
                FieldDescriptor fieldDescriptor = (FieldDescriptor) obj;
                if (this.a.equals(fieldDescriptor.a) && this.b.equals(fieldDescriptor.b)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "FieldDescriptor{name=" + this.a + ", properties=" + this.b.values() + "}";
    }
}
