package androidx.datastore.preferences.protobuf;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class RawMessageInfo implements MessageInfo {
    public final MessageLite a;
    public final String b;
    public final Object[] c;
    public final int d;

    public RawMessageInfo(MessageLite messageLite, String str, Object[] objArr) {
        this.a = messageLite;
        this.b = str;
        this.c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.d = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char charAt2 = str.charAt(i3);
            if (charAt2 >= 55296) {
                i |= (charAt2 & 8191) << i2;
                i2 += 13;
                i3 = i4;
            } else {
                this.d = i | (charAt2 << i2);
                return;
            }
        }
    }

    public final ProtoSyntax a() {
        int i = this.d;
        if ((i & 1) != 0) {
            return ProtoSyntax.j;
        }
        if ((i & 4) == 4) {
            return ProtoSyntax.l;
        }
        return ProtoSyntax.k;
    }
}
