.class public Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;
.super Landroidx/arch/core/internal/SafeIterableMap$SupportRemove;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/arch/core/internal/SafeIterableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IteratorWithAdditions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/arch/core/internal/SafeIterableMap$SupportRemove<",
        "TK;TV;>;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public j:Z

.field public final synthetic k:Landroidx/arch/core/internal/SafeIterableMap;


# direct methods
.method public constructor <init>(Landroidx/arch/core/internal/SafeIterableMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->k:Landroidx/arch/core/internal/SafeIterableMap;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->j:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->j:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->k:Landroidx/arch/core/internal/SafeIterableMap;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    :cond_0
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->j:Z

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->k:Landroidx/arch/core/internal/SafeIterableMap;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method
