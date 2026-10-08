package androidx.room;

import android.content.Context;
import android.content.Intent;
import androidx.room.RoomDatabase;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import java.io.File;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import kotlin.coroutines.CoroutineContext;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class DatabaseConfiguration {
    public final Context a;
    public final String b;
    public final SupportSQLiteOpenHelper.Factory c;
    public final RoomDatabase.MigrationContainer d;
    public final List e;
    public final boolean f;
    public final RoomDatabase.JournalMode g;
    public final Executor h;
    public final Executor i;
    public final Intent j;
    public final boolean k;
    public final boolean l;
    public final Set m;
    public final String n;
    public final File o;
    public final Callable p;
    public final List q;
    public final List r;
    public final boolean s;
    public final SQLiteDriver t;
    public final CoroutineContext u;
    public boolean v;

    public DatabaseConfiguration(Context context, String str, SupportSQLiteOpenHelper.Factory factory, RoomDatabase.MigrationContainer migrationContainer, List list, boolean z, RoomDatabase.JournalMode journalMode, Executor executor, Executor executor2, Intent intent, boolean z2, boolean z3, Set set, String str2, File file, Callable callable, List list2, List list3, boolean z4, SQLiteDriver sQLiteDriver, CoroutineContext coroutineContext) {
        context.getClass();
        migrationContainer.getClass();
        executor.getClass();
        executor2.getClass();
        list2.getClass();
        list3.getClass();
        this.a = context;
        this.b = str;
        this.c = factory;
        this.d = migrationContainer;
        this.e = list;
        this.f = z;
        this.g = journalMode;
        this.h = executor;
        this.i = executor2;
        this.j = intent;
        this.k = z2;
        this.l = z3;
        this.m = set;
        this.n = str2;
        this.o = file;
        this.p = callable;
        this.q = list2;
        this.r = list3;
        this.s = z4;
        this.t = sQLiteDriver;
        this.u = coroutineContext;
        this.v = true;
    }
}
