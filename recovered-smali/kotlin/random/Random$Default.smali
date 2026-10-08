.class public final Lkotlin/random/Random$Default;
.super Lkotlin/random/Random;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/random/Random;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    sget-object p0, Lkotlin/random/Random;->k:Lkotlin/random/AbstractPlatformRandom;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/random/AbstractPlatformRandom;->a()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final b()I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
