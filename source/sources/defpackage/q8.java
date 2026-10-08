package defpackage;

import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteQuery;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavHostController;
import androidx.room.driver.SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import androidx.sqlite.db.framework.FrameworkSQLiteProgram;
import kotlin.Unit;
import kotlin.jvm.functions.Function4;
import net.blip.android.ui.navigation.NavigationRootKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class q8 implements Function4 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ q8(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object j(Object obj, Object obj2, Object obj3, Object obj4) {
        int i = this.j;
        Object obj5 = this.k;
        switch (i) {
            case 0:
                SQLiteQuery sQLiteQuery = (SQLiteQuery) obj4;
                String[] strArr = FrameworkSQLiteDatabase.k;
                sQLiteQuery.getClass();
                ((SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1) obj5).a(new FrameworkSQLiteProgram(sQLiteQuery));
                return new SQLiteCursor((SQLiteCursorDriver) obj2, (String) obj3, sQLiteQuery);
            default:
                Composer composer = (Composer) obj3;
                ((Integer) obj4).getClass();
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = NavigationRootKt.a;
                ((AnimatedContentScope) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                NavigationRootKt.a(ComposableLambdaKt.b(-403115114, new g3((NavHostController) obj5, 5), composer), composer, 6);
                return Unit.a;
        }
    }
}
