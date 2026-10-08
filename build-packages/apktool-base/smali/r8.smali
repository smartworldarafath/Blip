.class public final synthetic Lr8;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# instance fields
.field public final synthetic a:Lq8;


# direct methods
.method public synthetic constructor <init>(Lq8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr8;->a:Lq8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 1

    .line 1
    sget-object v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->k:[Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lr8;->a:Lq8;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lq8;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/database/Cursor;

    .line 10
    .line 11
    return-object p0
.end method
