.class final Landroidx/datastore/core/FileWriteScope$writeData$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.datastore.core.FileWriteScope"
    f = "FileStorage.kt"
    l = {
        0xc9
    }
    m = "writeData"
.end annotation


# instance fields
.field public m:Ljava/io/FileOutputStream;

.field public n:Ljava/io/FileOutputStream;

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Landroidx/datastore/core/FileWriteScope;

.field public q:I


# direct methods
.method public constructor <init>(Landroidx/datastore/core/FileWriteScope;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/datastore/core/FileWriteScope$writeData$1;->p:Landroidx/datastore/core/FileWriteScope;

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
    iput-object p1, p0, Landroidx/datastore/core/FileWriteScope$writeData$1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Landroidx/datastore/core/FileWriteScope$writeData$1;->q:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroidx/datastore/core/FileWriteScope$writeData$1;->q:I

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/datastore/core/FileWriteScope$writeData$1;->p:Landroidx/datastore/core/FileWriteScope;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, p0}, Landroidx/datastore/core/FileWriteScope;->b(Ljava/lang/Object;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
