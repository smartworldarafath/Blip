package defpackage;

import androidx.compose.material.DrawerState;
import androidx.compose.material.DrawerValue;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotIdSet;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.compose.AsyncImagePainter;
import coil3.compose.internal.UtilsKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import net.blip.android.UriUtilKt;
import net.blip.android.netstatus.NetworkObservation;
import net.blip.libblip.event.NetworkAvailable;
import net.blip.libblip.event.NetworkUnavailable;
import net.blip.libblip.event.SetUserAvatar;
import net.blip.libblip.event.UpdateUser;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class c8 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Function1 k;

    public /* synthetic */ c8(Function1 function1, int i) {
        this.j = i;
        this.k = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        Boolean bool = null;
        Function1 function1 = this.k;
        switch (i) {
            case 0:
                return new DrawerState((DrawerValue) obj, function1);
            case 1:
                List list = (List) obj;
                list.getClass();
                if (!list.isEmpty()) {
                    ArrayList arrayList = new ArrayList(CollectionsKt.m(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add(UriUtilKt.a((String) it.next()));
                    }
                    function1.b(arrayList);
                }
                return Unit.a;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                NetworkObservation networkObservation = (NetworkObservation) obj;
                networkObservation.getClass();
                long j = networkObservation.b;
                if (networkObservation.a) {
                    function1.b(new NetworkAvailable("unknown", j, ByteString.m));
                } else {
                    function1.b(new NetworkUnavailable(j, ByteString.m));
                }
                return Unit.a;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                String str = (String) obj;
                str.getClass();
                function1.b(new SetUserAvatar(str));
                return Unit.a;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                String str2 = (String) obj;
                str2.getClass();
                function1.b(new UpdateUser(str2, bool, 6));
                return Unit.a;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                String str3 = (String) obj;
                str3.getClass();
                function1.b(new SetUserAvatar(str3));
                return Unit.a;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                le leVar = SnapshotKt.a;
                Snapshot snapshot = (Snapshot) function1.b((SnapshotIdSet) obj);
                synchronized (SnapshotKt.c) {
                    SnapshotKt.d = SnapshotKt.d.f(snapshot.g());
                }
                return snapshot;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Long l = (Long) obj;
                l.getClass();
                return function1.b(l);
            default:
                AsyncImagePainter.State state = (AsyncImagePainter.State) obj;
                int i2 = UtilsKt.b;
                if (!(state instanceof AsyncImagePainter.State.Loading)) {
                    if (state instanceof AsyncImagePainter.State.Success) {
                        if (function1 != null) {
                            function1.b(state);
                        }
                    } else if (!(state instanceof AsyncImagePainter.State.Error) && !(state instanceof AsyncImagePainter.State.Empty)) {
                        k8.e();
                        return null;
                    }
                }
                return Unit.a;
        }
    }
}
