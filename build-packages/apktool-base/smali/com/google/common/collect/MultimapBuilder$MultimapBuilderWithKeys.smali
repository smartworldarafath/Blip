.class public abstract Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MultimapBuilderWithKeys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public final a()Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;
    .locals 1

    .line 1
    const/4 p0, 0x2

    .line 2
    const-string v0, "expectedValuesPerKey"

    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/google/common/collect/CollectPreconditions;->a(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
