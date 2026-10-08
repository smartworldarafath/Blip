package com.google.common.base;

import java.io.IOException;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class Joiner {
    public final String a;

    public Joiner(String str) {
        str.getClass();
        this.a = str;
    }

    public static CharSequence b(Object obj) {
        java.util.Objects.requireNonNull(obj);
        if (obj instanceof CharSequence) {
            return (CharSequence) obj;
        }
        return obj.toString();
    }

    public final void a(StringBuilder sb, Iterator it) {
        try {
            if (it.hasNext()) {
                sb.append(b(it.next()));
                while (it.hasNext()) {
                    sb.append((CharSequence) this.a);
                    sb.append(b(it.next()));
                }
            }
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
