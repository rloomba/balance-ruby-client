<%= boiler_plate %>
callback = Balanced::Callback.new(
    %m for k, v in payload.iteritems():
        :${k} => '${v}',
    % endfor
    ).save
