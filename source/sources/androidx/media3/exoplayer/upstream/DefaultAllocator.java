package androidx.media3.exoplayer.upstream;

import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.upstream.Allocator;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultAllocator implements Allocator {
    public int c;
    public int d;
    public final boolean a = true;
    public final int b = 65536;
    public int e = 0;
    public Allocation[] f = new Allocation[100];

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public final synchronized void a(Allocator.AllocationNode allocationNode) {
        while (allocationNode != null) {
            Allocation[] allocationArr = this.f;
            int i = this.e;
            this.e = i + 1;
            allocationArr[i] = allocationNode.a();
            this.d--;
            allocationNode = allocationNode.next();
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public final synchronized Allocation b() {
        Allocation allocation;
        try {
            int i = this.d + 1;
            this.d = i;
            int i2 = this.e;
            if (i2 > 0) {
                Allocation[] allocationArr = this.f;
                int i3 = i2 - 1;
                this.e = i3;
                allocation = allocationArr[i3];
                allocation.getClass();
                this.f[this.e] = null;
            } else {
                Allocation allocation2 = new Allocation(0, new byte[this.b]);
                Allocation[] allocationArr2 = this.f;
                if (i > allocationArr2.length) {
                    this.f = (Allocation[]) Arrays.copyOf(allocationArr2, allocationArr2.length * 2);
                }
                allocation = allocation2;
            }
        } catch (Throwable th) {
            throw th;
        }
        return allocation;
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public final synchronized void c(Allocation allocation) {
        Allocation[] allocationArr = this.f;
        int i = this.e;
        this.e = i + 1;
        allocationArr[i] = allocation;
        this.d--;
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public final synchronized void d() {
        int max = Math.max(0, Util.e(this.c, this.b) - this.d);
        int i = this.e;
        if (max >= i) {
            return;
        }
        Arrays.fill(this.f, max, i, (Object) null);
        this.e = max;
    }

    @Override // androidx.media3.exoplayer.upstream.Allocator
    public final int e() {
        return this.b;
    }

    public final synchronized void f(int i) {
        boolean z;
        if (i < this.c) {
            z = true;
        } else {
            z = false;
        }
        this.c = i;
        if (z) {
            d();
        }
    }
}
