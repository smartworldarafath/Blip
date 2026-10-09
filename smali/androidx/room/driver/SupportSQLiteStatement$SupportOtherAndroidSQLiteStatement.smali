.class final Landroidx/room/driver/SupportSQLiteStatement$SupportOtherAndroidSQLiteStatement;
.super Landroidx/room/driver/SupportSQLiteStatement;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/driver/SupportSQLiteStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SupportOtherAndroidSQLiteStatement"
.end annotation


# instance fields
.field public final m:Landroidx/sqlite/db/SupportSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/room/driver/SupportSQLiteStatement;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->z(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportOtherAndroidSQLiteStatement;->m:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final T(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/room/driver/SupportSQLiteStatement;->a()V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportOtherAndroidSQLiteStatement;->m:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 8
    .line 9
    invoke-interface {p0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->u(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final V0()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/room/driver/SupportSQLiteStatement;->a()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportOtherAndroidSQLiteStatement;->m:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 5
    .line 6
    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteStatement;->m()V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportOtherAndroidSQLiteStatement;->m:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/room/driver/SupportSQLiteStatement;->l:Z

    .line 8
    .line 9
    return-void
.end method

.method public final getBlob(I)[B
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/room/driver/SupportSQLiteStatement;->a()V

    .line 2
    .line 3
    .line 4
    const/16 p0, 0x15

    .line 5
    .line 6
    const-string p1, "no row"

    .line 7
    .line 8
    invoke-static {p0, p1}, Landroidx/sqlite/SQLite;->b(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final getColumnCount()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/room/driver/SupportSQLiteStatement;->a()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return p0
.end method

.method public final getColumnName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/room/driver/SupportSQLiteStatement;->a()V

    .line 2
    .line 3
    .line 4
    const/16 p0, 0x15

    .line 5
    .line 6
    const-string p1, "no row"

    .line 7
    .line 8
    invoke-static {p0, p1}, Landroidx/sqlite/SQLite;->b(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final getLong(I)J
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/room/driver/SupportSQLiteStatement;->a()V

    .line 2
    .line 3
    .line 4
    const/16 p0, 0x15

    .line 5
    .line 6
    const-string p1, "no row"

    .line 7
    .line 8
    invoke-static {p0, p1}, Landroidx/sqlite/SQLite;->b(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final isNull(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/room/driver/SupportSQLiteStatement;->a()V

    .line 2
    .line 3
    .line 4
    const/16 p0, 0x15

    .line 5
    .line 6
    const-string p1, "no row"

    .line 7
    .line 8
    invoke-static {p0, p1}, Landroidx/sqlite/SQLite;->b(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final j(IJ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/room/driver/SupportSQLiteStatement;->a()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportOtherAndroidSQLiteStatement;->m:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 5
    .line 6
    invoke-interface {p0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->j(IJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final k(I[B)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/room/driver/SupportSQLiteStatement;->a()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportOtherAndroidSQLiteStatement;->m:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 5
    .line 6
    invoke-interface {p0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->k(I[B)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final l(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/room/driver/SupportSQLiteStatement;->a()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportOtherAndroidSQLiteStatement;->m:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->l(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final r0(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/room/driver/SupportSQLiteStatement;->a()V

    .line 2
    .line 3
    .line 4
    const/16 p0, 0x15

    .line 5
    .line 6
    const-string p1, "no row"

    .line 7
    .line 8
    invoke-static {p0, p1}, Landroidx/sqlite/SQLite;->b(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final reset()V
    .locals 0

    .line 1
    return-void
.end method
