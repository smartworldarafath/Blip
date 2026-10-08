.class final Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.room.util.DBUtil__DBUtil_androidKt"
    f = "DBUtil.android.kt"
    l = {
        0xf5,
        0xf7,
        0xf7
    }
    m = "performSuspending"
.end annotation


# instance fields
.field public m:Landroidx/room/RoomDatabase;

.field public n:Lii;

.field public o:Z

.field public synthetic p:Ljava/lang/Object;

.field public q:I


# virtual methods
.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->q:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->q:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v0, p1, p0}, Landroidx/room/util/DBUtil;->c(Landroidx/room/RoomDatabase;ZLii;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
