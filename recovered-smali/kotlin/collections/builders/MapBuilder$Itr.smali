.class public abstract Lkotlin/collections/builders/MapBuilder$Itr;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/builders/MapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final j:Lkotlin/collections/builders/MapBuilder;

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(Lkotlin/collections/builders/MapBuilder;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->j:Lkotlin/collections/builders/MapBuilder;

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->l:I

    .line 11
    .line 12
    iget p1, p1, Lkotlin/collections/builders/MapBuilder;->q:I

    .line 13
    .line 14
    iput p1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->m:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$Itr;->b()V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->j:Lkotlin/collections/builders/MapBuilder;

    .line 2
    .line 3
    iget v0, v0, Lkotlin/collections/builders/MapBuilder;->q:I

    .line 4
    .line 5
    iget p0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->m:I

    .line 6
    .line 7
    if-ne v0, p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lu2;->d()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    :goto_0
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->k:I

    .line 2
    .line 3
    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->j:Lkotlin/collections/builders/MapBuilder;

    .line 4
    .line 5
    iget v2, v1, Lkotlin/collections/builders/MapBuilder;->o:I

    .line 6
    .line 7
    if-ge v0, v2, :cond_0

    .line 8
    .line 9
    iget-object v1, v1, Lkotlin/collections/builders/MapBuilder;->l:[I

    .line 10
    .line 11
    aget v1, v1, v0

    .line 12
    .line 13
    if-gez v1, :cond_0

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    iput v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->k:I

    .line 2
    .line 3
    iget-object p0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->j:Lkotlin/collections/builders/MapBuilder;

    .line 4
    .line 5
    iget p0, p0, Lkotlin/collections/builders/MapBuilder;->o:I

    .line 6
    .line 7
    if-ge v0, p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final remove()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$Itr;->a()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->l:I

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->j:Lkotlin/collections/builders/MapBuilder;

    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->c()V

    .line 12
    .line 13
    .line 14
    iget v2, p0, Lkotlin/collections/builders/MapBuilder$Itr;->l:I

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lkotlin/collections/builders/MapBuilder;->l(I)V

    .line 17
    .line 18
    .line 19
    iput v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->l:I

    .line 20
    .line 21
    iget v0, v0, Lkotlin/collections/builders/MapBuilder;->q:I

    .line 22
    .line 23
    iput v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->m:I

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string p0, "Call next() before removing element from the iterator."

    .line 27
    .line 28
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
