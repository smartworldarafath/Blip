package defpackage;

import androidx.compose.ui.ZIndexNode;
import androidx.compose.ui.layout.Placeable;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTag;
import androidx.work.impl.model.WorkTagDao_Impl;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class ui implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;

    public /* synthetic */ ui(int i, Object obj, Object obj2) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        Unit unit = Unit.a;
        Object obj2 = this.l;
        Object obj3 = this.k;
        switch (i) {
            case 0:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                ((WorkSpecDao_Impl) obj3).b.c(sQLiteConnection, (WorkSpec) obj2);
                return unit;
            case 1:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                ((WorkTagDao_Impl) obj3).b.c(sQLiteConnection2, (WorkTag) obj2);
                return unit;
            default:
                ((Placeable.PlacementScope) obj).e((Placeable) obj3, 0, 0, ((ZIndexNode) obj2).x);
                return unit;
        }
    }
}
