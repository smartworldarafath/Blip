.class public final synthetic Lc5;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lc5;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lc5;->k:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    iget v0, p0, Lc5;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lc5;->k:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, [Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    array-length v0, p0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    if-ge v2, v0, :cond_1

    .line 14
    .line 15
    aget-object v3, p0, v2

    .line 16
    .line 17
    invoke-interface {v3, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Ljava/lang/Comparable;

    .line 22
    .line 23
    invoke-interface {v3, p2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/lang/Comparable;

    .line 28
    .line 29
    invoke-static {v4, v3}, Lkotlin/comparisons/ComparisonsKt;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    move v1, v3

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :goto_1
    return v1

    .line 41
    :pswitch_0
    check-cast p0, Lnet/blip/libblip/Users_DerivedKt$recentContacts$$inlined$thenBy$1;

    .line 42
    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    if-nez p2, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/4 v1, 0x1

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    if-nez p2, :cond_4

    .line 51
    .line 52
    const/4 v1, -0x1

    .line 53
    goto :goto_2

    .line 54
    :cond_4
    invoke-virtual {p0, p1, p2}, Lnet/blip/libblip/Users_DerivedKt$recentContacts$$inlined$thenBy$1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    :goto_2
    return v1

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
