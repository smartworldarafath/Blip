package net.blip.libblip.frontend;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import com.squareup.wire.internal.Internal;
import defpackage.jb;
import defpackage.q;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Search extends Message {
    public static final Search$Companion$ADAPTER$1 q = new ProtoAdapter(FieldEncoding.m, Reflection.a(Search.class), "type.googleapis.com/frontend.Search", Syntax.l, null, 0);
    public final String m;
    public final Status n;
    public final List o;
    public final List p;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Status implements WireEnum {
        public static final Companion k;
        public static final Search$Status$Companion$ADAPTER$1 l;
        public static final Status m;
        public static final Status n;
        public static final Status o;
        public static final Status p;
        public static final /* synthetic */ Status[] q;
        public final int j;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Companion {
        }

        /* JADX WARN: Type inference failed for: r1v3, types: [net.blip.libblip.frontend.Search$Status$Companion, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r3v3, types: [net.blip.libblip.frontend.Search$Status$Companion$ADAPTER$1, com.squareup.wire.EnumAdapter] */
        static {
            Status status = new Status("Unknown", 0, 0);
            m = status;
            Status status2 = new Status("InProgress", 1, 1);
            n = status2;
            Status status3 = new Status("Failed", 2, 2);
            o = status3;
            Status status4 = new Status("Complete", 3, 3);
            p = status4;
            Status[] statusArr = {status, status2, status3, status4};
            q = statusArr;
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
            return (Status[]) q.clone();
        }

        @Override // com.squareup.wire.WireEnum
        public final int getValue() {
            return this.j;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Search(String str, Status status, ArrayList arrayList, ArrayList arrayList2, ByteString byteString) {
        super(q, byteString);
        str.getClass();
        status.getClass();
        byteString.getClass();
        this.m = str;
        this.n = status;
        this.o = Internal.a("local_results", arrayList);
        this.p = Internal.a("server_results", arrayList2);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Search)) {
            return false;
        }
        Search search = (Search) obj;
        if (Intrinsics.a(a(), search.a()) && Intrinsics.a(this.m, search.m) && this.n == search.n && Intrinsics.a(this.o, search.o) && Intrinsics.a(this.p, search.p)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = this.p.hashCode() + ((this.o.hashCode() + ((this.n.hashCode() + jb.c(this.m, a().hashCode() * 37, 37)) * 37)) * 37);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        q.z(this.m, "query=", arrayList);
        arrayList.add("fetch_status=" + this.n);
        List list = this.o;
        if (!list.isEmpty()) {
            arrayList.add("local_results=" + list);
        }
        List list2 = this.p;
        if (!list2.isEmpty()) {
            arrayList.add("server_results=" + list2);
        }
        return CollectionsKt.y(arrayList, ", ", "Search{", "}", null, 56);
    }
}
