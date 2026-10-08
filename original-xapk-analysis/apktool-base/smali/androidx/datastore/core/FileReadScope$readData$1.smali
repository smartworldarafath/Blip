.class final Landroidx/datastore/core/FileReadScope$readData$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.datastore.core.FileReadScope"
    f = "FileStorage.kt"
    l = {
        0xa9,
        0xb2
    }
    m = "readData$suspendImpl"
.end annotation


# instance fields
.field public m:Ljava/lang/Object;

.field public n:Ljava/io/FileInputStream;

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Landroidx/datastore/core/FileReadScope;

.field public q:I


# direct methods
.method public constructor <init>(Landroidx/datastore/core/FileReadScope;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/datastore/core/FileReadScope$readData$1;->p:Landroidx/datastore/core/FileReadScope;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/datastore/core/FileReadScope$readData$1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Landroidx/datastore/core/FileReadScope$readData$1;->q:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroidx/datastore/core/FileReadScope$readData$1;->q:I

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/datastore/core/FileReadScope$readData$1;->p:Landroidx/datastore/core/FileReadScope;

    .line 11
    .line 12
    invoke-static {p1, p0}, Landroidx/datastore/core/FileReadScope;->a(Landroidx/datastore/core/FileReadScope;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
