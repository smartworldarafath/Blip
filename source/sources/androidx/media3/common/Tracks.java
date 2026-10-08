package androidx.media3.common;

import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Tracks {
    public static final Tracks b = new Tracks(ImmutableList.r());
    public final ImmutableList a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Group {
        public final int a;
        public final TrackGroup b;
        public final boolean c;
        public final int[] d;
        public final boolean[] e;

        static {
            Util.z(0);
            Util.z(1);
            Util.z(3);
            Util.z(4);
        }

        public Group(TrackGroup trackGroup, boolean z, int[] iArr, boolean[] zArr) {
            boolean z2;
            int i = trackGroup.a;
            this.a = i;
            boolean z3 = false;
            if (i == iArr.length && i == zArr.length) {
                z2 = true;
            } else {
                z2 = false;
            }
            Preconditions.e(z2);
            this.b = trackGroup;
            if (z && i > 1) {
                z3 = true;
            }
            this.c = z3;
            this.d = (int[]) iArr.clone();
            this.e = (boolean[]) zArr.clone();
        }

        public final boolean a(int i) {
            if (this.d[i] != 4) {
                return false;
            }
            return true;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && Group.class == obj.getClass()) {
                Group group = (Group) obj;
                if (this.c == group.c && this.b.equals(group.b) && Arrays.equals(this.d, group.d) && Arrays.equals(this.e, group.e)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Arrays.hashCode(this.e) + ((Arrays.hashCode(this.d) + (((this.b.hashCode() * 31) + (this.c ? 1 : 0)) * 31)) * 31);
        }
    }

    static {
        Util.z(0);
    }

    public Tracks(List list) {
        this.a = ImmutableList.m(list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean a(int i) {
        int i2 = 0;
        while (true) {
            ImmutableList immutableList = this.a;
            if (i2 >= immutableList.size()) {
                return false;
            }
            Group group = (Group) immutableList.get(i2);
            boolean[] zArr = group.e;
            int length = zArr.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    break;
                }
                if (zArr[i3]) {
                    if (group.b.c == i) {
                        return true;
                    }
                } else {
                    i3++;
                }
            }
            i2++;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Tracks.class == obj.getClass()) {
            return this.a.equals(((Tracks) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }
}
