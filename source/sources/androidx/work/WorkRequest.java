package androidx.work;

import androidx.work.OneTimeWorkRequest;
import androidx.work.impl.model.WorkSpec;
import defpackage.u2;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class WorkRequest {
    public final UUID a;
    public final WorkSpec b;
    public final Set c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class Builder<B extends Builder<B, ?>, W extends WorkRequest> {
        public UUID a;
        public WorkSpec b;
        public final LinkedHashSet c;

        public Builder(Class cls) {
            UUID randomUUID = UUID.randomUUID();
            randomUUID.getClass();
            this.a = randomUUID;
            String uuid = this.a.toString();
            uuid.getClass();
            this.b = new WorkSpec(uuid, (WorkInfo$State) null, cls.getName(), (String) null, (Data) null, (Data) null, 0L, 0L, 0L, (Constraints) null, 0, (BackoffPolicy) null, 0L, 0L, 0L, 0L, false, (OutOfQuotaPolicy) null, 0, 0L, 0, 0, (String) null, (Boolean) null, 33554426);
            String[] strArr = {cls.getName()};
            LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt.d(1));
            linkedHashSet.add(strArr[0]);
            this.c = linkedHashSet;
        }

        /* JADX WARN: Type inference failed for: r2v0, types: [androidx.work.WorkRequest, androidx.work.OneTimeWorkRequest] */
        public final OneTimeWorkRequest a() {
            boolean z;
            String str;
            OneTimeWorkRequest.Builder builder = (OneTimeWorkRequest.Builder) this;
            ?? workRequest = new WorkRequest(builder.a, builder.b, builder.c);
            Constraints constraints = this.b.j;
            if (constraints.i.isEmpty() && !constraints.e && !constraints.c && !constraints.d) {
                z = false;
            } else {
                z = true;
            }
            WorkSpec workSpec = this.b;
            if (workSpec.q) {
                if (!z) {
                    if (workSpec.g > 0) {
                        u2.g("Expedited jobs cannot be delayed");
                        return null;
                    }
                } else {
                    u2.g("Expedited jobs only support network and storage constraints");
                    return null;
                }
            }
            String str2 = workSpec.x;
            if (str2 == null) {
                List G = StringsKt.G(workSpec.c, new String[]{"."}, 6);
                if (G.size() == 1) {
                    str = (String) G.get(0);
                } else {
                    str = (String) CollectionsKt.z(G);
                }
                if (str.length() > 127) {
                    str = StringsKt.Q(127, str);
                }
                workSpec.x = str;
            } else if (str2.length() > 127) {
                this.b.x = StringsKt.Q(127, str2);
            }
            UUID randomUUID = UUID.randomUUID();
            randomUUID.getClass();
            this.a = randomUUID;
            String uuid = randomUUID.toString();
            uuid.getClass();
            WorkSpec workSpec2 = this.b;
            workSpec2.getClass();
            this.b = new WorkSpec(uuid, workSpec2.b, workSpec2.c, workSpec2.d, new Data(workSpec2.e), new Data(workSpec2.f), workSpec2.g, workSpec2.h, workSpec2.i, new Constraints(workSpec2.j), workSpec2.k, workSpec2.l, workSpec2.m, workSpec2.n, workSpec2.o, workSpec2.p, workSpec2.q, workSpec2.r, workSpec2.s, workSpec2.u, workSpec2.v, workSpec2.w, workSpec2.x, workSpec2.y, 524288);
            return workRequest;
        }
    }

    public WorkRequest(UUID uuid, WorkSpec workSpec, Set set) {
        uuid.getClass();
        workSpec.getClass();
        set.getClass();
        this.a = uuid;
        this.b = workSpec;
        this.c = set;
    }
}
