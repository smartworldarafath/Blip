package io.ktor.util;

import defpackage.k8;
import defpackage.u2;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CaseInsensitiveMap$ValueCollection$iterator$1 implements Iterator<Object>, KMappedMarker {
    public int j;
    public String k;
    public final /* synthetic */ CaseInsensitiveMap l;

    public CaseInsensitiveMap$ValueCollection$iterator$1(CaseInsensitiveMap caseInsensitiveMap) {
        this.l = caseInsensitiveMap;
        while (true) {
            int i = this.j;
            CaseInsensitiveMap caseInsensitiveMap2 = this.l;
            if (i < caseInsensitiveMap2.n) {
                int i2 = caseInsensitiveMap2.m[i];
                if (i2 < 0 || caseInsensitiveMap2.j[i2] == null) {
                    this.j = i + 1;
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.j < this.l.n) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i;
        if (hasNext()) {
            CaseInsensitiveMap caseInsensitiveMap = this.l;
            int i2 = caseInsensitiveMap.m[this.j];
            String str = caseInsensitiveMap.j[i2];
            str.getClass();
            this.k = str;
            Object obj = caseInsensitiveMap.k[i2];
            obj.getClass();
            this.j++;
            while (true) {
                int i3 = this.j;
                if (i3 >= caseInsensitiveMap.n || ((i = caseInsensitiveMap.m[i3]) >= 0 && caseInsensitiveMap.j[i] != null)) {
                    break;
                }
                this.j = i3 + 1;
            }
            return obj;
        }
        k8.o();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        String str = this.k;
        if (str != null) {
            this.l.remove(str);
            this.k = null;
        } else {
            u2.l("next() must be called before remove()");
        }
    }
}
