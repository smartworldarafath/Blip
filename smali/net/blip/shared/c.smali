.class public final synthetic Lnet/blip/shared/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:Lnet/blip/shared/SimpleLinkTextButton;

.field public final synthetic k:Landroidx/compose/ui/unit/Density;

.field public final synthetic l:F

.field public final synthetic m:Lnet/blip/shared/LinkableSpan$Link;

.field public final synthetic n:Landroidx/compose/ui/text/TextStyle;


# direct methods
.method public synthetic constructor <init>(Lnet/blip/shared/SimpleLinkTextButton;Landroidx/compose/ui/unit/Density;FLnet/blip/shared/LinkableSpan$Link;Landroidx/compose/ui/text/TextStyle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/shared/c;->j:Lnet/blip/shared/SimpleLinkTextButton;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/shared/c;->k:Landroidx/compose/ui/unit/Density;

    .line 7
    .line 8
    iput p3, p0, Lnet/blip/shared/c;->l:F

    .line 9
    .line 10
    iput-object p4, p0, Lnet/blip/shared/c;->m:Lnet/blip/shared/LinkableSpan$Link;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/blip/shared/c;->n:Landroidx/compose/ui/text/TextStyle;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    sget-object v0, Lnet/blip/shared/LinkableTextKt;->a:Lkotlin/text/Regex;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    and-int/lit8 p1, p3, 0x11

    .line 17
    .line 18
    const/16 v0, 0x10

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    if-eq p1, v0, :cond_0

    .line 22
    .line 23
    move p1, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    and-int/2addr p3, v1

    .line 27
    move-object v7, p2

    .line 28
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 29
    .line 30
    invoke-virtual {v7, p3, p1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 37
    .line 38
    iget-object p2, p0, Lnet/blip/shared/c;->k:Landroidx/compose/ui/unit/Density;

    .line 39
    .line 40
    iget p3, p0, Lnet/blip/shared/c;->l:F

    .line 41
    .line 42
    invoke-interface {p2, p3}, Landroidx/compose/ui/unit/Density;->X(F)F

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-static {p1, p2, v1}, Landroidx/compose/foundation/layout/OffsetKt;->c(Landroidx/compose/ui/Modifier;FI)Landroidx/compose/ui/Modifier;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-object p1, p0, Lnet/blip/shared/c;->m:Lnet/blip/shared/LinkableSpan$Link;

    .line 51
    .line 52
    iget-object v4, p1, Lnet/blip/shared/LinkableSpan;->a:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v5, p1, Lnet/blip/shared/LinkableSpan$Link;->b:Ljava/lang/String;

    .line 55
    .line 56
    const/4 v8, 0x0

    .line 57
    iget-object v2, p0, Lnet/blip/shared/c;->j:Lnet/blip/shared/SimpleLinkTextButton;

    .line 58
    .line 59
    iget-object v6, p0, Lnet/blip/shared/c;->n:Landroidx/compose/ui/text/TextStyle;

    .line 60
    .line 61
    invoke-virtual/range {v2 .. v8}, Lnet/blip/shared/SimpleLinkTextButton;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;I)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 66
    .line 67
    .line 68
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p0
.end method
