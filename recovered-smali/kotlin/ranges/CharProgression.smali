.class public abstract Lkotlin/ranges/CharProgression;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Character;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field public final j:C

.field public final k:C

.field public final l:I


# direct methods
.method public constructor <init>(CC)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-char p1, p0, Lkotlin/ranges/CharProgression;->j:C

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {p1, p2, v0}, Lkotlin/internal/ProgressionUtilKt;->a(III)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    int-to-char p1, p1

    .line 12
    iput-char p1, p0, Lkotlin/ranges/CharProgression;->k:C

    .line 13
    .line 14
    iput v0, p0, Lkotlin/ranges/CharProgression;->l:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .line 1
    new-instance v0, Lkotlin/ranges/CharProgressionIterator;

    .line 2
    .line 3
    iget-char v1, p0, Lkotlin/ranges/CharProgression;->k:C

    .line 4
    .line 5
    iget v2, p0, Lkotlin/ranges/CharProgression;->l:I

    .line 6
    .line 7
    iget-char p0, p0, Lkotlin/ranges/CharProgression;->j:C

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2}, Lkotlin/ranges/CharProgressionIterator;-><init>(CCI)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
