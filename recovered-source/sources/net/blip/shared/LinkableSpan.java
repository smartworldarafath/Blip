package net.blip.shared;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class LinkableSpan {
    public final String a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Link extends LinkableSpan {
        public final String b;

        public Link(String str, String str2) {
            super(str);
            this.b = str2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Plain extends LinkableSpan {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Plain(String str) {
            super(str);
            str.getClass();
        }
    }

    public LinkableSpan(String str) {
        this.a = str;
    }
}
