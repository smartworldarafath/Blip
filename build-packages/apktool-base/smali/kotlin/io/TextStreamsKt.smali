.class public abstract Lkotlin/io/TextStreamsKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Ljava/io/BufferedReader;)Lkotlin/sequences/ConstrainedOnceSequence;
    .locals 1

    .line 1
    new-instance v0, Lkotlin/io/LinesSequence;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lkotlin/io/LinesSequence;-><init>(Ljava/io/BufferedReader;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lkotlin/sequences/ConstrainedOnceSequence;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lkotlin/sequences/ConstrainedOnceSequence;-><init>(Lkotlin/sequences/Sequence;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
