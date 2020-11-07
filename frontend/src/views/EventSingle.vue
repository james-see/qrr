<template>
  <div class="event-single">
    <section class="hero is-primary">
      <div class="hero-body">
        <div class="container">
          <h1 class="title">{{ event.name }}</h1>
          <h2 class="subtitle">
            <strong>Date:</strong>
            {{ event.date }}
            <br />
            <strong>Time:</strong>
            {{ event.time }}
          </h2>
        </div>
      </div>
    </section>
    <section class="event-content">
      <div class="container-fluid">
        <div class="text-center">
          <img src="https://chart.googleapis.com/chart?cht=qr&chl=Hello+World&chs=160x160&chld=L|0"
               class="qr-code img-thumbnail img-responsive">
        </div>
      
        <div class="form-horizontal">
          <div class="form-group">
            <label class="control-label col-sm-2" for="content">Content:</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" id="content" placeholder="Enter content">
            </div>
          </div>
          <div class="form-group"> 
            <div class="col-sm-offset-2 col-sm-10">
              <button type="button" class="btn btn-default" id="generate">Generate</button>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>
<script>
function htmlEncode (value){
  return $('<div/>').text(value).html();
}

$(function() {
  $("#generate").click(function() {
    $(".qr-code").attr("src", "https://chart.googleapis.com/chart?cht=qr&chl=" + htmlEncode($("#content").val()) + "&chs=160x160&chld=L|0");
  });
});

export default {
  name: "EventSingle",
  data() {
    return {
      events: [
        {
          id: 1,
          name: "Charity Ball",
          category: "Fundraising",
          description:
            "Spend an elegant night of dinner and dancing with us as we raise money for our new rescue farm.",
          featuredImage: "https://placekitten.com/500/500",
          images: [
            "https://placekitten.com/500/500",
            "https://placekitten.com/500/500",
            "https://placekitten.com/500/500"
          ],
          location: "1234 Fancy Ave",
          date: "12-25-2019",
          time: "11:30"
        },
        {
          id: 2,
          name: "Rescue Center Goods Drive",
          category: "Adoptions",
          description:
            "Come to our donation drive to help us replenish our stock of pet food, toys, bedding, etc. We will have live bands, games, food trucks, and much more.",
          featuredImage: "https://placekitten.com/500/500",
          images: ["https://placekitten.com/500/500"],
          location: "1234 Dog Alley",
          date: "11-21-2019",
          time: "12:00"
        }
      ],
      event: {}
    };
  },
  created() {
    const ID = Number(this.$route.params.id);
    let event = this.events.find(event => event.id === ID);
    this.event = event;
  }
};
</script>