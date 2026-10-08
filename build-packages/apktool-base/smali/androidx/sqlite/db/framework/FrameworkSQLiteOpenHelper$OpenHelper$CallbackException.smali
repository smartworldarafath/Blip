.class final Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException;
.super Ljava/lang/RuntimeException;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallbackException"
.end annotation


# instance fields
.field public final j:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;

.field public final k:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException;->j:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException;->k:Ljava/lang/Throwable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException;->k:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object p0
.end method
