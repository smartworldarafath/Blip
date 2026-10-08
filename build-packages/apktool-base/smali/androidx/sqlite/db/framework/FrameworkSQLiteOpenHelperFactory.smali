.class public final Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;


# virtual methods
.method public final a(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 6

    .line 1
    new-instance v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    .line 2
    .line 3
    iget-object v1, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->c:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 8
    .line 9
    iget-boolean v4, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->d:Z

    .line 10
    .line 11
    iget-boolean v5, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->e:Z

    .line 12
    .line 13
    invoke-direct/range {v0 .. v5}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;ZZ)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
