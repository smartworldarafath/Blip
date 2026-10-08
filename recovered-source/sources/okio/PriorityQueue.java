package okio;

import defpackage.u2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PriorityQueue {
    public int a;
    public AsyncTimeout[] b;

    public final void a(int i, AsyncTimeout asyncTimeout) {
        while (true) {
            int i2 = i >> 1;
            if (i2 == 0) {
                break;
            }
            AsyncTimeout asyncTimeout2 = this.b[i2];
            asyncTimeout2.getClass();
            if (Intrinsics.c(0L, asyncTimeout.g - asyncTimeout2.g) <= 0) {
                break;
            }
            asyncTimeout2.f = i;
            this.b[i] = asyncTimeout2;
            i = i2;
        }
        this.b[i] = asyncTimeout;
        asyncTimeout.f = i;
    }

    public final void b(AsyncTimeout asyncTimeout) {
        AsyncTimeout asyncTimeout2;
        int i = asyncTimeout.f;
        if (i != -1) {
            int i2 = this.a;
            AsyncTimeout asyncTimeout3 = this.b[i2];
            asyncTimeout3.getClass();
            asyncTimeout.f = -1;
            this.b[i2] = null;
            this.a = i2 - 1;
            if (asyncTimeout == asyncTimeout3) {
                return;
            }
            int c = Intrinsics.c(0L, asyncTimeout3.g - asyncTimeout.g);
            if (c == 0) {
                this.b[i] = asyncTimeout3;
                asyncTimeout3.f = i;
                return;
            }
            if (c < 0) {
                while (true) {
                    int i3 = i << 1;
                    int i4 = i3 + 1;
                    int i5 = this.a;
                    if (i4 <= i5) {
                        asyncTimeout2 = this.b[i3];
                        asyncTimeout2.getClass();
                        AsyncTimeout asyncTimeout4 = this.b[i4];
                        asyncTimeout4.getClass();
                        if (Intrinsics.c(0L, asyncTimeout4.g - asyncTimeout2.g) >= 0) {
                            asyncTimeout2 = asyncTimeout4;
                        }
                    } else {
                        if (i3 > i5) {
                            break;
                        }
                        asyncTimeout2 = this.b[i3];
                        asyncTimeout2.getClass();
                    }
                    if (Intrinsics.c(0L, asyncTimeout2.g - asyncTimeout3.g) <= 0) {
                        break;
                    }
                    int i6 = asyncTimeout2.f;
                    asyncTimeout2.f = i;
                    this.b[i] = asyncTimeout2;
                    i = i6;
                }
                this.b[i] = asyncTimeout3;
                asyncTimeout3.f = i;
                return;
            }
            a(i, asyncTimeout3);
            return;
        }
        u2.g("Failed requirement.");
    }
}
