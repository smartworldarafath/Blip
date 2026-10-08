.class final Lkotlin/collections/AbstractList$SubList;
.super Lkotlin/collections/AbstractList;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractList<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final j:Lkotlin/collections/AbstractList;

.field public final k:I

.field public final l:I


# direct methods
.method public constructor <init>(Lkotlin/collections/AbstractList;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlin/collections/AbstractList$SubList;->j:Lkotlin/collections/AbstractList;

    .line 5
    .line 6
    iput p2, p0, Lkotlin/collections/AbstractList$SubList;->k:I

    .line 7
    .line 8
    invoke-virtual {p1}, Lkotlin/collections/AbstractCollection;->b()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {p2, p3, p1}, Lkotlin/collections/AbstractList$Companion;->d(III)V

    .line 13
    .line 14
    .line 15
    sub-int/2addr p3, p2

    .line 16
    iput p3, p0, Lkotlin/collections/AbstractList$SubList;->l:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final b()I
    .locals 0

    .line 1
    iget p0, p0, Lkotlin/collections/AbstractList$SubList;->l:I

    .line 2
    .line 3
    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/collections/AbstractList$SubList;->l:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/collections/AbstractList$Companion;->b(II)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lkotlin/collections/AbstractList$SubList;->k:I

    .line 7
    .line 8
    add-int/2addr v0, p1

    .line 9
    iget-object p0, p0, Lkotlin/collections/AbstractList$SubList;->j:Lkotlin/collections/AbstractList;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lkotlin/collections/AbstractList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 2

    .line 1
    iget v0, p0, Lkotlin/collections/AbstractList$SubList;->l:I

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Lkotlin/collections/AbstractList$Companion;->d(III)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/collections/AbstractList$SubList;

    .line 7
    .line 8
    iget v1, p0, Lkotlin/collections/AbstractList$SubList;->k:I

    .line 9
    .line 10
    add-int/2addr p1, v1

    .line 11
    add-int/2addr v1, p2

    .line 12
    iget-object p0, p0, Lkotlin/collections/AbstractList$SubList;->j:Lkotlin/collections/AbstractList;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1, v1}, Lkotlin/collections/AbstractList$SubList;-><init>(Lkotlin/collections/AbstractList;II)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
