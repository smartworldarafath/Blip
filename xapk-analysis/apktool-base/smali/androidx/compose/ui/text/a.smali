.class public final synthetic Landroidx/compose/ui/text/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/text/AndroidParagraphIntrinsics;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/AndroidParagraphIntrinsics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/text/a;->j:Landroidx/compose/ui/text/AndroidParagraphIntrinsics;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroidx/compose/ui/text/font/FontFamily;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/ui/text/font/FontWeight;

    .line 4
    .line 5
    check-cast p3, Landroidx/compose/ui/text/font/FontStyle;

    .line 6
    .line 7
    check-cast p4, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/ui/text/a;->j:Landroidx/compose/ui/text/AndroidParagraphIntrinsics;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->e:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 12
    .line 13
    iget p3, p3, Landroidx/compose/ui/text/font/FontStyle;->a:I

    .line 14
    .line 15
    iget p4, p4, Landroidx/compose/ui/text/font/FontSynthesis;->a:I

    .line 16
    .line 17
    check-cast v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->b(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/ui/text/font/TypefaceResult;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    instance-of p2, p1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 24
    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    new-instance p2, Landroidx/compose/ui/text/TypefaceDirtyTrackerLinkedList;

    .line 28
    .line 29
    iget-object p3, p0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->j:Landroidx/compose/ui/text/TypefaceDirtyTrackerLinkedList;

    .line 30
    .line 31
    invoke-direct {p2, p1, p3}, Landroidx/compose/ui/text/TypefaceDirtyTrackerLinkedList;-><init>(Landroidx/compose/ui/text/font/TypefaceResult;Landroidx/compose/ui/text/TypefaceDirtyTrackerLinkedList;)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->j:Landroidx/compose/ui/text/TypefaceDirtyTrackerLinkedList;

    .line 35
    .line 36
    iget-object p0, p2, Landroidx/compose/ui/text/TypefaceDirtyTrackerLinkedList;->c:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    check-cast p0, Landroid/graphics/Typeface;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_0
    check-cast p1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 45
    .line 46
    iget-object p0, p1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->j:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    check-cast p0, Landroid/graphics/Typeface;

    .line 52
    .line 53
    return-object p0
.end method
