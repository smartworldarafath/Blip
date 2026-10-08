package io.ktor.util;

import defpackage.k8;
import defpackage.u2;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CaseInsensitiveMap$KeySet$iterator$1 implements Iterator<String>, KMappedMarker {
    public int j;
    public String k;
    public final /* synthetic */ CaseInsensitiveMap l;

    public CaseInsensitiveMap$KeySet$iterator$1(CaseInsensitiveMap caseInsensitiveMap) {
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
    public final String next() {
        int i;
        if (hasNext()) {
            CaseInsensitiveMap caseInsensitiveMap = this.l;
            String str = caseInsensitiveMap.j[caseInsensitiveMap.m[this.j]];
            str.getClass();
            this.k = str;
            this.j++;
            while (true) {
                int i2 = this.j;
                if (i2 >= caseInsensitiveMap.n || ((i = caseInsensitiveMap.m[i2]) >= 0 && caseInsensitiveMap.j[i] != null)) {
                    break;
                }
                this.j = i2 + 1;
            }
            String str2 = this.k;
            str2.getClass();
            return str2;
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
