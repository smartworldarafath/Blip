package net.blip.libblip.frontend;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import defpackage.jb;
import defpackage.q;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Onboarding extends Message {
    public static final Onboarding$Companion$ADAPTER$1 s = new ProtoAdapter(FieldEncoding.m, Reflection.a(Onboarding.class), "type.googleapis.com/frontend.Onboarding", Syntax.l, null, 0);
    public final Step m;
    public final boolean n;
    public final boolean o;
    public final boolean p;
    public final boolean q;
    public final boolean r;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Step extends Message {
        public static final Onboarding$Step$Companion$ADAPTER$1 p = new ProtoAdapter(FieldEncoding.m, Reflection.a(Step.class), "type.googleapis.com/frontend.Onboarding.Step", Syntax.l, null, 0);
        public final Kind m;
        public final boolean n;
        public final Err o;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Kind implements WireEnum {
            public static final Companion k;
            public static final Onboarding$Step$Kind$Companion$ADAPTER$1 l;
            public static final Kind m;
            public static final Kind n;
            public static final Kind o;
            public static final Kind p;
            public static final Kind q;
            public static final Kind r;
            public static final Kind s;
            public static final Kind t;
            public static final Kind u;
            public static final /* synthetic */ Kind[] v;
            public final int j;

            /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
            /* loaded from: classes.dex */
            public static final class Companion {
            }

            /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, net.blip.libblip.frontend.Onboarding$Step$Kind$Companion] */
            /* JADX WARN: Type inference failed for: r3v3, types: [com.squareup.wire.EnumAdapter, net.blip.libblip.frontend.Onboarding$Step$Kind$Companion$ADAPTER$1] */
            static {
                Kind kind = new Kind("Splash", 0, 0);
                m = kind;
                Kind kind2 = new Kind("EmailEntry", 1, 1);
                n = kind2;
                Kind kind3 = new Kind("CodeEntry", 2, 2);
                o = kind3;
                Kind kind4 = new Kind("Profile", 3, 3);
                p = kind4;
                Kind kind5 = new Kind("CompanionDeviceSetup", 4, 4);
                q = kind5;
                Kind kind6 = new Kind("EnableNotifications", 5, 5);
                r = kind6;
                Kind kind7 = new Kind("EnableMediaLibrary", 6, 6);
                s = kind7;
                Kind kind8 = new Kind("ShareInstructions", 7, 7);
                t = kind8;
                Kind kind9 = new Kind("Complete", 8, 8);
                u = kind9;
                Kind[] kindArr = {kind, kind2, kind3, kind4, kind5, kind6, kind7, kind8, kind9};
                v = kindArr;
                EnumEntriesKt.a(kindArr);
                k = new Object();
                l = new EnumAdapter(Reflection.a(Kind.class), Syntax.l, kind);
            }

            public Kind(String str, int i, int i2) {
                this.j = i2;
            }

            public static Kind valueOf(String str) {
                return (Kind) Enum.valueOf(Kind.class, str);
            }

            public static Kind[] values() {
                return (Kind[]) v.clone();
            }

            @Override // com.squareup.wire.WireEnum
            public final int getValue() {
                return this.j;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Step(Kind kind, boolean z, Err err, ByteString byteString) {
            super(p, byteString);
            kind.getClass();
            byteString.getClass();
            this.m = kind;
            this.n = z;
            this.o = err;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Step)) {
                return false;
            }
            Step step = (Step) obj;
            if (Intrinsics.a(a(), step.a()) && this.m == step.m && this.n == step.n && Intrinsics.a(this.o, step.o)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            int i;
            int i2 = this.l;
            if (i2 == 0) {
                int b = jb.b((this.m.hashCode() + (a().hashCode() * 37)) * 37, 37, this.n);
                Err err = this.o;
                if (err != null) {
                    i = err.hashCode();
                } else {
                    i = 0;
                }
                int i3 = b + i;
                this.l = i3;
                return i3;
            }
            return i2;
        }

        public final String toString() {
            ArrayList arrayList = new ArrayList();
            arrayList.add("kind=" + this.m);
            q.A("is_saving=", this.n, arrayList);
            Err err = this.o;
            if (err != null) {
                arrayList.add("save_error=" + err);
            }
            return CollectionsKt.y(arrayList, ", ", "Step{", "}", null, 56);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Onboarding(Step step, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, ByteString byteString) {
        super(s, byteString);
        byteString.getClass();
        this.m = step;
        this.n = z;
        this.o = z2;
        this.p = z3;
        this.q = z4;
        this.r = z5;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Onboarding)) {
            return false;
        }
        Onboarding onboarding = (Onboarding) obj;
        if (Intrinsics.a(a(), onboarding.a()) && Intrinsics.a(this.m, onboarding.m) && this.n == onboarding.n && this.o == onboarding.o && this.p == onboarding.p && this.q == onboarding.q && this.r == onboarding.r) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2 = this.l;
        if (i2 == 0) {
            int hashCode = a().hashCode() * 37;
            Step step = this.m;
            if (step != null) {
                i = step.hashCode();
            } else {
                i = 0;
            }
            int hashCode2 = Boolean.hashCode(this.r) + jb.b(jb.b(jb.b(jb.b((hashCode + i) * 37, 37, this.n), 37, this.o), 37, this.p), 37, this.q);
            this.l = hashCode2;
            return hashCode2;
        }
        return i2;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        Step step = this.m;
        if (step != null) {
            arrayList.add("current_step=" + step);
        }
        q.A("did_skip_splash=", this.n, arrayList);
        q.A("did_skip_companion_device_setup=", this.o, arrayList);
        q.A("did_skip_enable_notifications=", this.p, arrayList);
        q.A("did_skip_enable_media_library=", this.q, arrayList);
        q.A("did_skip_share_instructions=", this.r, arrayList);
        return CollectionsKt.y(arrayList, ", ", "Onboarding{", "}", null, 56);
    }
}
