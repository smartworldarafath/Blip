.class final Lkotlin/sequences/EmptySequence;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/sequences/Sequence;
.implements Lkotlin/sequences/DropTakeSequence;


# static fields
.field public static final a:Lkotlin/sequences/EmptySequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/sequences/EmptySequence;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlin/sequences/EmptySequence;->a:Lkotlin/sequences/EmptySequence;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(I)Lkotlin/sequences/Sequence;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/sequences/EmptySequence;->a:Lkotlin/sequences/EmptySequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/collections/EmptyIterator;->j:Lkotlin/collections/EmptyIterator;

    .line 2
    .line 3
    return-object p0
.end method
