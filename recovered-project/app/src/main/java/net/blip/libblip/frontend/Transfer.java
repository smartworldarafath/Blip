package net.blip.libblip.frontend;

import bsarchive.Metadata;
import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import defpackage.jb;
import defpackage.q;
import java.time.Instant;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import net.blip.libblip.PeerId;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Transfer extends Message {
    public static final Transfer$Companion$ADAPTER$1 D = new ProtoAdapter(FieldEncoding.m, Reflection.a(Transfer.class), "type.googleapis.com/frontend.Transfer", Syntax.l, null, 0);
    public final ConnStats A;
    public final int B;
    public final Instant C;
    public final String m;
    public final PeerId n;
    public final int o;
    public final Metadata p;
    public final String q;
    public final String r;
    public final boolean s;
    public final TransferErr t;
    public final TransferErr u;
    public final Direction v;
    public final Status w;
    public final boolean x;
    public final boolean y;
    public final long z;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Direction implements WireEnum {
        public static final Companion k;
        public static final Transfer$Direction$Companion$ADAPTER$1 l;
        public static final Direction m;
        public static final Direction n;
        public static final Direction o;
        public static final /* synthetic */ Direction[] p;
        public final int j;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Companion {
        }

        /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, net.blip.libblip.frontend.Transfer$Direction$Companion] */
        /* JADX WARN: Type inference failed for: r3v2, types: [com.squareup.wire.EnumAdapter, net.blip.libblip.frontend.Transfer$Direction$Companion$ADAPTER$1] */
        static {
            Direction direction = new Direction("UnknownDirection", 0, 0);
            m = direction;
            Direction direction2 = new Direction("Incoming", 1, 1);
            n = direction2;
            Direction direction3 = new Direction("Outgoing", 2, 2);
            o = direction3;
            Direction[] directionArr = {direction, direction2, direction3};
            p = directionArr;
            EnumEntriesKt.a(directionArr);
            k = new Object();
            l = new EnumAdapter(Reflection.a(Direction.class), Syntax.l, direction);
        }

        public Direction(String str, int i, int i2) {
            this.j = i2;
        }

        public static Direction valueOf(String str) {
            return (Direction) Enum.valueOf(Direction.class, str);
        }

        public static Direction[] values() {
            return (Direction[]) p.clone();
        }

        @Override // com.squareup.wire.WireEnum
        public final int getValue() {
            return this.j;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Status implements WireEnum {
        public static final Companion k;
        public static final Transfer$Status$Companion$ADAPTER$1 l;
        public static final Status m;
        public static final Status n;
        public static final Status o;
        public static final Status p;
        public static final Status q;
        public static final Status r;
        public static final Status s;
        public static final Status t;
        public static final Status u;
        public static final Status v;
        public static final /* synthetic */ Status[] w;
        public final int j;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Companion {
        }

        /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, net.blip.libblip.frontend.Transfer$Status$Companion] */
        /* JADX WARN: Type inference failed for: r3v3, types: [net.blip.libblip.frontend.Transfer$Status$Companion$ADAPTER$1, com.squareup.wire.EnumAdapter] */
        static {
            Status status = new Status("UnknownStatus", 0, 0);
            m = status;
            Status status2 = new Status("Created", 1, 1);
            n = status2;
            Status status3 = new Status("InviteRequested", 2, 2);
            o = status3;
            Status status4 = new Status("Invited", 3, 3);
            p = status4;
            Status status5 = new Status("Pending", 4, 4);
            q = status5;
            Status status6 = new Status("Active", 5, 5);
            r = status6;
            Status status7 = new Status("Paused", 6, 6);
            s = status7;
            Status status8 = new Status("ResumeRequested", 7, 7);
            t = status8;
            Status status9 = new Status("Completed", 8, 8);
            u = status9;
            Status status10 = new Status("Cancelled", 9, 9);
            v = status10;
            Status[] statusArr = {status, status2, status3, status4, status5, status6, status7, status8, status9, status10};
            w = statusArr;
            EnumEntriesKt.a(statusArr);
            k = new Object();
            l = new EnumAdapter(Reflection.a(Status.class), Syntax.l, status);
        }

        public Status(String str, int i, int i2) {
            this.j = i2;
        }

        public static Status valueOf(String str) {
            return (Status) Enum.valueOf(Status.class, str);
        }

        public static Status[] values() {
            return (Status[]) w.clone();
        }

        @Override // com.squareup.wire.WireEnum
        public final int getValue() {
            return this.j;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Transfer(String str, PeerId peerId, int i, Metadata metadata, String str2, String str3, boolean z, TransferErr transferErr, TransferErr transferErr2, Direction direction, Status status, boolean z2, boolean z3, long j, ConnStats connStats, int i2, Instant instant, ByteString byteString) {
        super(D, byteString);
        str.getClass();
        str2.getClass();
        str3.getClass();
        direction.getClass();
        status.getClass();
        byteString.getClass();
        this.m = str;
        this.n = peerId;
        this.o = i;
        this.p = metadata;
        this.q = str2;
        this.r = str3;
        this.s = z;
        this.t = transferErr;
        this.u = transferErr2;
        this.v = direction;
        this.w = status;
        this.x = z2;
        this.y = z3;
        this.z = j;
        this.A = connStats;
        this.B = i2;
        this.C = instant;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Transfer)) {
            return false;
        }
        Transfer transfer = (Transfer) obj;
        if (Intrinsics.a(a(), transfer.a()) && Intrinsics.a(this.m, transfer.m) && Intrinsics.a(this.n, transfer.n) && this.o == transfer.o && Intrinsics.a(this.p, transfer.p) && Intrinsics.a(this.q, transfer.q) && Intrinsics.a(this.r, transfer.r) && this.s == transfer.s && Intrinsics.a(this.t, transfer.t) && Intrinsics.a(this.u, transfer.u) && this.v == transfer.v && this.w == transfer.w && this.x == transfer.x && this.y == transfer.y && this.z == transfer.z && Intrinsics.a(this.A, transfer.A) && this.B == transfer.B && Intrinsics.a(this.C, transfer.C)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = this.l;
        if (i6 == 0) {
            int c = jb.c(this.m, a().hashCode() * 37, 37);
            int i7 = 0;
            PeerId peerId = this.n;
            if (peerId != null) {
                i = peerId.hashCode();
            } else {
                i = 0;
            }
            int b = q.b(this.o, (c + i) * 37, 37);
            Metadata metadata = this.p;
            if (metadata != null) {
                i2 = metadata.hashCode();
            } else {
                i2 = 0;
            }
            int b2 = jb.b(jb.c(this.r, jb.c(this.q, (b + i2) * 37, 37), 37), 37, this.s);
            TransferErr transferErr = this.t;
            if (transferErr != null) {
                i3 = transferErr.hashCode();
            } else {
                i3 = 0;
            }
            int i8 = (b2 + i3) * 37;
            TransferErr transferErr2 = this.u;
            if (transferErr2 != null) {
                i4 = transferErr2.hashCode();
            } else {
                i4 = 0;
            }
            int a = jb.a(jb.b(jb.b((this.w.hashCode() + ((this.v.hashCode() + ((i8 + i4) * 37)) * 37)) * 37, 37, this.x), 37, this.y), 37, this.z);
            ConnStats connStats = this.A;
            if (connStats != null) {
                i5 = connStats.hashCode();
            } else {
                i5 = 0;
            }
            int b3 = q.b(this.B, (a + i5) * 37, 37);
            Instant instant = this.C;
            if (instant != null) {
                i7 = instant.hashCode();
            }
            int i9 = b3 + i7;
            this.l = i9;
            return i9;
        }
        return i6;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        q.z(this.m, "transfer_id=", arrayList);
        PeerId peerId = this.n;
        if (peerId != null) {
            arrayList.add("peer_id=" + peerId);
        }
        arrayList.add("content_job_count=" + this.o);
        Metadata metadata = this.p;
        if (metadata != null) {
            arrayList.add("archive_stub=" + metadata);
        }
        q.z(this.q, "unpack_state=", arrayList);
        q.z(this.r, "destination_location=", arrayList);
        q.A("save_to_media_library_disabled=", this.s, arrayList);
        TransferErr transferErr = this.t;
        if (transferErr != null) {
            arrayList.add("local_err=" + transferErr);
        }
        TransferErr transferErr2 = this.u;
        if (transferErr2 != null) {
            arrayList.add("remote_err=" + transferErr2);
        }
        arrayList.add("direction=" + this.v);
        arrayList.add("status=" + this.w);
        q.A("is_resumable=", this.x, arrayList);
        q.A("is_dismissed=", this.y, arrayList);
        arrayList.add("progress=" + this.z);
        ConnStats connStats = this.A;
        if (connStats != null) {
            arrayList.add("stats=" + connStats);
        }
        arrayList.add("connect_attempt_count=" + this.B);
        Instant instant = this.C;
        if (instant != null) {
            arrayList.add("updated_at=" + instant);
        }
        return CollectionsKt.y(arrayList, ", ", "Transfer{", "}", null, 56);
    }
}
