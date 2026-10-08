package defpackage;

import androidx.compose.animation.core.Animatable;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.ui.unit.IntOffset;
import androidx.room.util.SQLiteConnectionUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class ti implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ long k;
    public final /* synthetic */ Object l;

    public /* synthetic */ ti(LazyLayoutItemAnimation lazyLayoutItemAnimation, long j) {
        this.j = 2;
        this.l = lazyLayoutItemAnimation;
        this.k = j;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        SQLiteStatement a1;
        int i = this.j;
        Unit unit = Unit.a;
        long j = this.k;
        Object obj2 = this.l;
        switch (i) {
            case 0:
                String str = (String) obj2;
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                a1 = sQLiteConnection.a1("UPDATE workspec SET schedule_requested_at=? WHERE id=?");
                try {
                    a1.j(1, j);
                    a1.T(2, str);
                    a1.V0();
                    int a = SQLiteConnectionUtil.a(sQLiteConnection);
                    a1.close();
                    return Integer.valueOf(a);
                } finally {
                }
            case 1:
                String str2 = (String) obj2;
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                a1 = sQLiteConnection2.a1("UPDATE workspec SET last_enqueue_time=? WHERE id=?");
                try {
                    a1.j(1, j);
                    a1.T(2, str2);
                    a1.V0();
                    return unit;
                } finally {
                }
            default:
                LazyLayoutItemAnimation lazyLayoutItemAnimation = (LazyLayoutItemAnimation) obj2;
                lazyLayoutItemAnimation.f(IntOffset.b(((IntOffset) ((Animatable) obj).f()).a, j));
                lazyLayoutItemAnimation.c.a();
                return unit;
        }
    }

    public /* synthetic */ ti(int i, long j, String str) {
        this.j = i;
        this.k = j;
        this.l = str;
    }
}
